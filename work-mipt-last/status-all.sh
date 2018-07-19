#! /bin/bash

RC_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

dirs=(  
    "bricks2"
	"flower_bricks"
	"flower_qt"
	"bricks_cli"
	"flower"
    "flower_numpy"
	"flower_pyphased"
	"integration_research"
	"pyphased"
	"pyphased_utils"
    "qgis_research"
    "radar_cad"
    "radar_sim"
    "misc_qt_utils"
)

for dir in "${dirs[@]}"; do
	cd "${RC_DIR}/${dir}"
	echo "Check status at ${dir}..."
	git status -s
done

