# process notebook
ipynb_template="/home/yi/arbitor_fund/arbitor_fund_analysis/ipynb_template.ipynb"
/usr/local/bin/jupyter nbconvert --execute --to notebook $ipynb_template --ExecutePreprocessor.timeout=600 --output $ipynb_template

# export to html
now=$(date -dy +"%Y-%m-%d")
html_outputfile="/home/yi/arbitor_fund/arbitor_fund_analysis/output/output_$now.html"
/usr/local/bin/jupyter nbconvert $ipynb_template --to html --no-input --output $html_outputfile
