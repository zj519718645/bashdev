package main

import(
	"fmt"
	"path/filepath"
	"os"
	"io"
	"log"
	"strings"
	"bufio"
	"regexp"
	)

// you can replace your source code base path here
var basePath string = "C:/Users/i075181/Desktop/TVD_21_SYSTEM/__empty__/sap/tm/trp"
// you can ignore the file which has specific suffix here
var suffix string = "CSV"

func WalkDir(dir string, suffix string) (files []string, err error) {
	files = make([]string, 0 , 5000)
	err = filepath.Walk(dir, func(filename string, info os.FileInfo, err error) error {
		if info.IsDir() {
			return nil
		}
		if strings.HasSuffix(strings.ToUpper(info.Name()), suffix) {
			return nil
		}

		files = append(files,filename)
		return nil
		})

	return files, nil

}

func CountLine(flnam string) (num int) {

	r, _ := regexp.Compile("[\\S]{1}")
	fl, err := os.Open(flnam)
	if nil != err {
		log.Println(err)
		return
	}
	defer fl.Close()

	rd := bufio.NewReader(fl)
	for {
		str, err := rd.ReadString('\n')

		if io.EOF == err || nil != err {
			if r.FindStringIndex(str) != nil {
				num++
			}
			break
		}

		if r.FindStringIndex(str) != nil {
			num++
		}		
	}
	return
}

func main() {

	files, _ := WalkDir(basePath,suffix)

	var totalLines int64 = 0
	var fileLines int = 0

	for _,file := range files {
		fileLines = CountLine(file)
		totalLines += int64(fileLines)
		//break
	}

	fmt.Println(totalLines)
}