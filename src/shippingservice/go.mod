module awesomeProject/HipsterShop/src/shippingservice

go 1.15

require (
	cloud.google.com/go v0.40.0
	contrib.go.opencensus.io/exporter/jaeger v0.2.0
	contrib.go.opencensus.io/exporter/stackdriver v0.5.0
	github.com/apache/thrift v0.12.1-0.20190708170704-286eee16b147
	github.com/golang/protobuf v1.3.1
	github.com/google/pprof v0.0.0-20190515194954-54271f7e092f
	github.com/googleapis/gax-go v1.0.3
	github.com/konsorten/go-windows-terminal-sequences v1.0.2
	github.com/sirupsen/logrus v1.4.2
	github.com/uber/jaeger-client-go v2.21.1+incompatible
	go.opencensus.io v0.16.0
	golang.org/x/net v0.0.0-20190628185345-da137c7871d7
	golang.org/x/oauth2 v0.0.0-20190604053449-0f29369cfe45
	golang.org/x/sync v0.0.0-20190423024810-112230192c58
	golang.org/x/sys v0.0.0-20190626221950-04f50cda93cb
	golang.org/x/text v0.3.2
	google.golang.org/api v0.7.1-0.20190709010654-aae1d1b89c27
	google.golang.org/appengine v1.6.1
	google.golang.org/genproto v0.0.0-20190708153700-3bdd9d9f5532
	google.golang.org/grpc v1.22.0
)

replace git.apache.org/thrift.git 286eee16b147a302ddc7b10740c5e5401ebbec17 => github.com/apache/thrift v0.12.1-0.20190708170704-286eee16b147
