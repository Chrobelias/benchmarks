(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.++ (re.++ (str.to_re "931") (str.to_re "140")) (re.+ (str.to_re "5")))))

(assert (< (+ (* (- 5) (str.len x)) (* (- 2) (str.to_int x))) 19))
(assert (< (* 10 (str.to_int x)) 37))

(check-sat)