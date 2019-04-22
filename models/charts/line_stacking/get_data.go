package line_stacking

import (
	"data_view/utils"
	"database/sql"
)

type LineStackingGetData struct {
}

func New() *LineStackingGetData {
	return &LineStackingGetData{}
}

func (lineStackingGetData *LineStackingGetData) GetDataFromDB(db *sql.DB, chartDataParams *utils.ChartDataParams) (result string, err error) {
	return "", nil
}
func (lineStackingGetData *LineStackingGetData) GetDataFromCsv(chartDataParams *utils.ChartDataParams) (result string, err error) {
	return "", nil
}
