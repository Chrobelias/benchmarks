(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.+ (re.* (re.++ (str.to_re "446") (str.to_re "82"))))))

(assert (< (* 8 (str.to_int x)) 53))
(assert (= (+ (* 5 (str.len x)) (* (- 7) (str.to_int x))) 32))
(assert (< (* 9 (str.to_int x)) 84))
(assert (> (* 8 (str.len x)) 9))

(check-sat)