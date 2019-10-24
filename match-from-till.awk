#!/usr/bin/awk -f


BEGIN {

    for (i = 1; i < ARGC; i++) {

        if (ARGV[i] ~ "^--from=") {
            _from = substr(ARGV[i], 8)
            delete ARGV[i]
        }

        if (ARGV[i] ~ "^--till=") {
            _till = substr(ARGV[i], 8)
            delete ARGV[i]
        }

        if (ARGV[i] == "--verbose" || ARGV[i] == "-v") {
            _verbose = "true"
            delete ARGV[i]
        }

    }


    ## Default variables used immediately within script _body_
    _buffer_index = 0

}


{

    if (_matched_from) {
        _lines_buffer[_buffer_index] = $0
        _buffer_index++
        if ($0 ~ _till) {
            _matched_till = "true"
        }
    } else {
        if ($0 ~ _from && $0 ~ _till) {
            _lines_buffer[_buffer_index] = $0
            _buffer_index++
            _matched_from = "true"
            _matched_till = "true"
        } else if ($0 ~ _from) {
            _lines_buffer[_buffer_index] = $0
            _buffer_index++
            _matched_from = "true"
        }
    }


    if (_matched_till) {
        if (_verbose) {
            if (FILENAME != "-") {
                print "## Outputting chunk from ->", FILENAME
            } else {
                print "## Outputting chunk from -> stdin or pipe"
            }
        }

        for (i in _lines_buffer) {
            print _lines_buffer[i]
        }

        ## Default variables prior to reading more from inputs
        _matched_from = ""
        _matched_till = ""
        delete _lines_buffer
        _buffer_index = 0
    }

}


END {

    if (_verbose) {
        print "## Finished parsing inputs"
    }

}
