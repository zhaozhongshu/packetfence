#!/bin/bash

set -e

#Find all modules that have an @EXPORT variable
MODULES=$(ag -s '@EXPORT(?!_)' -l lib/pf)

#MODULES=pf::config::pfqueue

for module in $MODULES ;do
    echo "Module $module"
    m=$( echo $module | perl -p -e's#lib/##;s/\.pm$//;s#/#::#g')
    ALL_EXPORTED_VALUES="$(perl -Ilib -M$m -e'print join("\n",  @'"$m"'::EXPORT);')"

    #Create a regex for subs and scalars
    ALL_EXPORTED_SUBS="$(perl -Ilib -M$m -e'print join("|", map { $a= $_; $a=~s/\$/\\\$/;$a  } grep { /^([a-zA_Z0-9_]|\$)/ }  @'"$m"'::EXPORT);')"
    #Create a regex for arrays and hashes
    ALL_EXPORTED_VARS_RX="$(perl -Ilib -M$m -e'print join("|", map { $a= $_; $a=~s/^./\\\$/;($a,$_)  } grep { /^[@%]/ }  @'"$m"'::EXPORT);')"
    ALL_EXPORTED_VARS="$(perl -Ilib -M$m -e'print join("|", map { $a= $_; $a=~s/^./\\\$/;($a,$_)  } grep { /^[@%]/ }  @'"$m"'::EXPORT);')"
    echo "'$ALL_EXPORTED_VALUES' '$ALL_EXPORTED_VARS'"

    if [ -z "$ALL_EXPORTED_VARS_RX" ] && [ -n "$ALL_EXPORTED_VALUES" ];then
        for f in $(ag -l "use $m;"); do 
            EXPORTED_SUBS=
            EXPORTED_VALUES=
                if [ -n "$ALL_EXPORTED_SUBS" ];then
                    EXPORTED_SUBS=$(ag -s --nocolor --nonumbers  -o "$ALL_EXPORTED_SUBS" $f | sort -u | perl -p -e's/\$/\\\$/;s/^/    /;')
                fi
                EXPORTED_VALUES=$EXPORTED_SUBS
                if [ -n "$EXPORTED_VALUES" ];then
                    perl -pi -e"s/use $m;/use $m qw(\n$EXPORTED_VALUES\n);/" $f
                else
                    perl -pi -e"s/use $m;//" $f
                fi
        done
        perl -pi -e's/,? *\@EXPORT_OK//' $module
        perl -pi -e's/EXPORT(?!_OK)/EXPORT_OK/' $module
        git add -u
        git commit -m"Move EXPORT to EXPORT_OK for $m"
    fi
done

