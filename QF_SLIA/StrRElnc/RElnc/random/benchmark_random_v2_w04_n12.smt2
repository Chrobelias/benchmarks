(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (= y (str.++ "53" x)))

(assert (str.in_re y (re.+ (re.* (re.union (re.range "5" "8") (re.* (str.to_re "38")))))))
(assert (str.in_re x (re.+ (re.+ (re.++ (re.range "6" "9") (re.* (str.to_re "608")))))))

(assert (<= (+ (* (- 9) (str.len x)) (* 9 (str.len y))) 69))
(assert (<= (+ (* 10 (str.len x)) (* 4 (str.to_int y))) 32))
(assert (<= (+ (* (- 5) (str.to_int x)) (* 3 (str.to_int y))) 61))

(check-sat)