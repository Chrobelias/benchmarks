(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (= (str.++ x "96") (str.++ "57" y)))

(assert (str.in_re x (re.union (re.range "0" "4") (re.+ (re.union (re.+ (re.range "3" "7")) (str.to_re "58"))))))
(assert (str.in_re y (re.++ (str.to_re "53") (re.+ (re.+ (re.range "6" "9"))))))

(assert (= (+ (* (- 9) (str.len x)) (* 7 (str.len y))) 97))
(assert (<= (+ (* (- 6) (str.to_int x)) (* (- 4) (str.to_int y))) 64))
(assert (<= (* (- 2) (str.to_int x)) 4))

(check-sat)