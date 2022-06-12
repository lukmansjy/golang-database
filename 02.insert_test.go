package golang_database

import (
	"context"
	"fmt"
	"testing"
)

func TestExectSql(t *testing.T) {
	db := GetConnection()
	defer db.Close()

	ctx := context.Background()

	query := "INSERT INTO customer(id, name, email, balance, rating, birth_date, married) VALUES('lukmans', 'Lukman Sanjaya', 'luk@gmail.com', 100000, 6.0, '2018-9-23', false)"
	_, err := db.ExecContext(ctx, query) // db.ExecContext tidak membutuhkan hasil / return
	if err != nil {
		panic(err)
	}

	fmt.Println("Success insert new customer")
}
