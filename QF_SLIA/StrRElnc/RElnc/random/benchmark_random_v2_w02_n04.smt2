(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (= y (str.++ "48" x)))

(assert (str.in_re x (re.union (re.union (re.+ (re.range "0" "7")) (re.range "6" "8")) (re.* (str.to_re "288")))))
(assert (str.in_re y (re.++ (re.++ (re.* (str.to_re "914")) (re.range "1" "7")) (re.* (re.range "3" "9")))))

(assert (< (+ (* 7 (str.len x)) (* (- 5) (str.len y))) 49))
(assert (= (+ (* (- 3) (str.to_int x)) (* 6 (str.to_int y))) 43))

(check-sat)