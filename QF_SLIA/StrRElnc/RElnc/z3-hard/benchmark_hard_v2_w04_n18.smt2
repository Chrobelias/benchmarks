(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (= y (str.++ "52" x)))

(assert (str.in_re x (re.* (re.+ (re.++ (str.to_re "1") (re.+ (str.to_re "71")))))))
(assert (str.in_re y (re.union (re.* (re.range "1" "9")) (re.++ (str.to_re "99") (str.to_re "8")))))

(assert (>= (+ (* 3 (str.to_int x)) (* (- 5) (str.to_int y))) 7))
(assert (< (+ (* 3 (str.len y)) (* (- 8) (str.to_int x))) 79))
(assert (<= (+ (* (- 6) (str.to_int x)) (* 9 (str.to_int y))) 5))

(check-sat)