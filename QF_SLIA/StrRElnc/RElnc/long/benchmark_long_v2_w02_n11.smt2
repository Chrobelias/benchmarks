(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (>= (str.len x) 1000))

(assert (= y (str.++ "56" x)))

(assert (str.in_re y (re.union (re.union (re.range "7" "9") (re.+ (re.range "2" "6"))) (str.to_re "51"))))
(assert (str.in_re x (re.union (str.to_re "347") (re.union (re.+ (str.to_re "33")) (re.range "2" "5")))))

(assert (< (* (- 2) (str.len y)) 31))
(assert (> (+ (* (- 8) (str.to_int x)) (* 3 (str.to_int y))) 66))

(check-sat)