(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.++ (re.+ (str.to_re "653")) (str.to_re "820"))))

(assert (= (* 7 (str.to_int x)) 52))
(assert (>= (* (- 10) (str.len x)) 84))

(check-sat)