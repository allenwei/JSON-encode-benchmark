package main
import "io/ioutil"
import "encoding/json"
import "time"
import "fmt"

func main() {
  content, err := ioutil.ReadFile("/tmp/test.json")
  if err != nil {
    panic(err)
  }
  var data []interface{}
  if err := json.Unmarshal(content, &data); err != nil {
    panic(err)
  }
  start := time.Now()
  json.Marshal(data)
  fmt.Printf("%s\n", time.Since(start))
}
