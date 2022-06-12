package golang_database

import (
	"context"
	"fmt"
	"testing"
)

func TestLastInsertId(t *testing.T) {
	db := GetConnection()
	defer db.Close()

	ctx := context.Background()

	email := "luk@gmail.com"
	comment := "Keren sangat membantu"

	query := "INSERT INTO comments(email, comment) VALUES(?, ?)"
	result, err := db.ExecContext(ctx, query, email, comment) // db.ExecContext tidak membutuhkan hasil / return
	if err != nil {
		panic(err)
	}

	insertId, err := result.LastInsertId()
	if err != nil {
		panic(err)
	}

	fmt.Println("Success insert new comment with id", insertId)
}
