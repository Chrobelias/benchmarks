(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.++ (re.+ (re.++ (re.range "7" "9") (str.to_re "6"))) (str.to_re "5"))))

(assert (>= (+ (* 10 (str.len x)) (* (- 3) (str.to_int x))) 73))

(check-sat)