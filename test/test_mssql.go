package main

import (
	"database/sql"
	"fmt"
	_ "github.com/denisenkom/go-mssqldb"
	"net/url"
)

func main() {
	// url := "sqlserver://sa:Admin!@192.168.2.148:1433?database=KADYKT&connection+timeout=30"
	// url := "server=192.168.2.148;user id=sa;password=Admin!;database=KADYKT"
	query := url.Values{}
	db, err := sql.Open("sqlserver", (&url.URL{
		Scheme: "sqlserver",
		User:   url.UserPassword("sa", "Admin!"),
		Host:   fmt.Sprintf("%s:%d", "192.168.2.148", 1433),
		// Path:  instance, // if connecting to an instance instead of a port
		RawQuery: query.Encode(),
	}).String())
	if err != nil {
		fmt.Println("第一个错误", err)
	}
	connErr := db.Ping()
	if connErr != nil {
		fmt.Println("第二个错误", connErr)
	}
	defer db.Close()
}
