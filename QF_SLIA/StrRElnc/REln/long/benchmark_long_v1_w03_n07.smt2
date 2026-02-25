(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (>= (str.len x) 1000))

(assert (str.in_re x (re.* (re.+ (re.++ (str.to_re "179") (str.to_re "7"))))))

(assert (= (+ (* 5 (str.len x)) (* (- 6) (str.to_int x))) 84))
(assert (>= (* (- 7) (str.len x)) 23))

(check-sat)