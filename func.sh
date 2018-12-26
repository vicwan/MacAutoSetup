export REPORT_DIR=~/desktop/MacAutoSetupReport

function malog() {
	if [[ $# != 1 ]]; then
		echo "Usage: malog \"statement\""
	else
		echo $1 && echo $1 >>REPORT_DIR/report
	fi
}
