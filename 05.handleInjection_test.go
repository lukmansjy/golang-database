package golang_database

import (
	"context"
	"fmt"
	"testing"
)

func TestHandleSQLInjectoin(t *testing.T) {
	db := GetConnection()
	defer db.Close()

	ctx := context.Background()

	username := "admin'; #"
	password := "salah"

	query := "SELECT username FROM user WHERE username = ? AND password = ? LIMIT 1" // query dengan parameter dapat menghindari sql injection
	rows, err := db.QueryContext(ctx, query, username, password)
	if err != nil {
		panic(err)
	}
	defer rows.Close()

	if rows.Next() {
		var username string
		err := rows.Scan(&username)
		if err != nil {
			panic(err)
		}
		fmt.Println("Success login", username)
	} else {
		fmt.Println("Fail login")
	}
}
