package golang_database

import (
	"context"
	"fmt"
	"strconv"
	"testing"
)

// Prepare statement digunakan untuk menjalakan query yg sama berkali-kali, misalnya import data dari file csv
func TestPrepareStatement(t *testing.T) {
	db := GetConnection()
	defer db.Close()

	ctx := context.Background()

	query := "INSERT INTO comments(email, comment) VALUES(?, ?)"
	statement, err := db.PrepareContext(ctx, query)
	if err != nil {
		panic(err)
	}
	defer statement.Close()

	// eksekusi prepare statement
	for i := 0; i < 10; i++ {
		email := "lukman" + strconv.Itoa(i) + "@gmail.com"
		comment := "Komentar ke " + strconv.Itoa(1)

		result, err := statement.ExecContext(ctx, email, comment)
		if err != nil {
			panic(err)
		}

		id, err := result.LastInsertId()
		if err != nil {
			panic(err)
		}

		fmt.Println("Comment Id:", id)
	}
}
