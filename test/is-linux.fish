mock uname 0 "echo 'Darwin'"
test "$TESTNAME"
  1 = (pf is-linux; echo $status)
end

mock uname 0 "echo 'Linux'"
test "$TESTNAME"
  0 = (pf is-linux; echo $status)
end
