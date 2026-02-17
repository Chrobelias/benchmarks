(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.++ (re.+ (str.to_re "727")) (re.++ (re.range "6" "9") (str.to_re "90")))))

(assert (<= (+ (* (- 3) (str.len x)) (* 5 (str.to_int x))) 86))
(assert (< (+ (* (- 3) (str.len x)) (* (- 5) (str.to_int x))) 44))

(check-sat)