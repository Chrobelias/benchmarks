(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (= (str.++ x "68") (str.++ "86" y)))

(assert (str.in_re y (re.* (re.union (re.+ (re.range "5" "8")) (str.to_re "26")))))
(assert (str.in_re x (re.+ (re.++ (re.* (str.to_re "457")) (re.+ (re.range "7" "9"))))))

(assert (<= (+ (* (- 4) (str.len y)) (str.to_int x)) 58))
(assert (> (+ (* (- 8) (str.len x)) (* (- 10) (str.len y))) 71))

(check-sat)