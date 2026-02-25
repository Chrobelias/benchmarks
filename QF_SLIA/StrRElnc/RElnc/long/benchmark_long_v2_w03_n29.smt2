(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (>= (str.len y) 1000))
(assert (>= (str.len x) 1000))

(assert (= (str.++ x "37") (str.++ "57" y)))

(assert (str.in_re y (re.union (str.to_re "9") (re.union (str.to_re "5") (re.+ (re.range "0" "9"))))))
(assert (str.in_re x (re.union (re.+ (re.union (re.range "4" "9") (str.to_re "12"))) (str.to_re "543"))))

(assert (>= (* 7 (str.len x)) 92))
(assert (>= (+ (* (- 5) (str.len x)) (* 8 (str.len y)) (* (- 8) (str.to_int x))) 13))

(check-sat)