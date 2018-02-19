#!/usr/bin/env bash
describe "the Latest And Greatest"
    ./helper/testsuite.sh &>/dev/null
    it "should always run the latest and greatest version of your tool"
        assert equal "$(./src/lag ./testcases/foo-*-bar/helloworld)" "hello it's me ./testcases/foo-0.10.0-bar/helloworld"
    end
    it 'should pollute your $path'
        LAG_CONFFILE=./testcases/conf ./src/lag pollute ./testcases/bin
        OUTPUT="$(LAG_CONFFILE=./testcases/conf ./testcases/bin/hello)"
        assert equal "$OUTPUT" "hello it's me ./testcases/foo-0.10.0-bar/helloworld"
    end
    it "should take care of your params"
        LAG_CONFFILE=./testcases/conf ./src/lag pollute ./testcases/bin
        OUTPUT="$(LAG_CONFFILE=./testcases/conf ./testcases/bin/hello 1 2 3 "4 5" 6)"
        assert equal "$OUTPUT" "hello it's me ./testcases/foo-0.10.0-bar/helloworld,1,2,3,4 5,6"
    end
    it "should pass shellcheck"
        shellcheck ./src/lag
        assert equal "$?" 0
    end
end
rm -rf testcases
