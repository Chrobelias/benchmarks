(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (>= (str.len x) 1000))

(assert (= y (str.++ "70" x)))

(assert (str.in_re y (re.* (re.union (re.++ (re.range "6" "8") (re.range "0" "7")) (re.range "1" "4")))))
(assert (str.in_re x (re.* (re.union (re.* (str.to_re "63")) (str.to_re "11")))))

(assert (< (+ (* 9 (str.len x)) (* 9 (str.to_int x))) 99))
(assert (>= (* (- 8) (str.to_int x)) 71))
(assert (<= (* (- 5) (str.to_int x)) 60))

(check-sat)