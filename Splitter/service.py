from Splitter import Splitter

if __name__ == "__main__":
    #### Copied code from Ranker - service.py - same functionality
    services = list()
    services.append(Splitter())
    print "Starting the splitter service"
    for service in services:
        service.start()
    print "Waiting for services to terminate"
    for service in services:
        print "Waiting for service{}".format(service.__class__.__name__)
        service.wait_for()
    print "Done"
