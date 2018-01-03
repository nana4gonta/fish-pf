mock uname 0 "echo 'Darwin'"
test "$TESTNAME"
  0 = (pf is-darwin; echo $status)
end

mock uname 0 "echo 'Linux 4.4.0-43-Microsoft'"
test "$TESTNAME"
  1 = (pf is-darwin; echo $status)
end

mock uname 0 "echo 'Linux'"
test "$TESTNAME"
  1 = (pf is-darwin; echo $status)
end
