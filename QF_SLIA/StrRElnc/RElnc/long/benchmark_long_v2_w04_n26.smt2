(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (>= (str.len x) 1000))

(assert (= y (str.++ "76" x)))

(assert (str.in_re x (re.union (re.union (re.+ (str.to_re "60")) (str.to_re "20")) (str.to_re "59"))))
(assert (str.in_re y (re.++ (re.range "1" "8") (re.++ (re.+ (re.range "4" "9")) (re.range "1" "9")))))

(assert (> (+ (* (- 5) (str.to_int x)) (* (- 9) (str.to_int y))) 23))
(assert (< (+ (* (- 3) (str.len y)) (* 3 (str.to_int x))) 94))
(assert (<= (+ (* (- 9) (str.len x)) (* (- 2) (str.len y))) 40))

(check-sat)