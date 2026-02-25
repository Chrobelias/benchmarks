(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (= (str.++ x "42") (str.++ "81" y)))

(assert (str.in_re x (re.* (re.union (re.* (re.range "1" "8")) (re.* (re.range "5" "9"))))))
(assert (str.in_re y (re.+ (re.union (re.+ (re.range "2" "4")) (re.+ (str.to_re "823"))))))

(assert (= (+ (* (- 9) (str.len x)) (* (- 2) (str.len y)) (* 4 (str.to_int x))) 34))
(assert (>= (+ (* 5 (str.len x)) (* 9 (str.len y))) 48))

(check-sat)