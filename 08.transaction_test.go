package golang_database

import (
	"context"
	"fmt"
	"strconv"
	"testing"
)

func TestTransaction(t *testing.T) {
	db := GetConnection()
	defer db.Close()

	ctx := context.Background()
	tx, err := db.Begin()
	if err != nil {
		panic(err)
	}

	query := "INSERT INTO comments(email, comment) VALUES(?, ?)"

	// transaction
	for i := 0; i < 10; i++ {
		email := "lukman" + strconv.Itoa(i) + "@gmail.com"
		comment := "Komentar ke " + strconv.Itoa(1)

		result, err := tx.ExecContext(ctx, query, email, comment)
		if err != nil {
			panic(err)
		}

		id, err := result.LastInsertId()
		if err != nil {
			panic(err)
		}

		fmt.Println("Comment Id:", id)
	}

	// err = tx.Rollback() // misalnya ada sesuatu yang salah bisa di rollback atau tidak di commit
	err = tx.Commit()
	if err != nil {
		panic(err)
	}
}
