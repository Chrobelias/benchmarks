(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (>= (str.len x) 1000))

(assert (str.in_re x (re.+ (re.++ (str.to_re "70") (re.* (re.* (str.to_re "14")))))))

(assert (>= (+ (* 8 (str.len x)) (* 7 (str.to_int x))) 46))

(check-sat)