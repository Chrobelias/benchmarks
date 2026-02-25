(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (>= (str.len x) 1000))

(assert (str.in_re x (re.union (re.++ (re.+ (str.to_re "74")) (str.to_re "496")) (str.to_re "5"))))

(assert (>= (* 4 (str.to_int x)) 15))
(assert (>= (* (- 2) (str.len x)) 81))

(check-sat)