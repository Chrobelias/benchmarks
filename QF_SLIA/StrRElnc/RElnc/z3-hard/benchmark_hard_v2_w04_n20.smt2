(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (= (str.++ "36" y) (str.++ x "34")))

(assert (str.in_re x (re.+ (re.union (re.range "6" "8") (re.* (re.range "1" "3"))))))
(assert (str.in_re y (re.+ (re.* (re.union (re.+ (str.to_re "27")) (re.range "2" "6"))))))

(assert (<= (+ (* (- 4) (str.len y)) (* (- 2) (str.to_int x))) 68))
(assert (= (+ (* 7 (str.len y)) (* 8 (str.to_int x))) 67))

(check-sat)