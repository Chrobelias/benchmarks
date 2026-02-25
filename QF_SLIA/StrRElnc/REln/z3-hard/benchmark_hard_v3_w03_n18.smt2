(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (str.in_re x (re.* (re.++ (re.range "3" "9") (re.range "5" "7")))))
(assert (str.in_re y (re.++ (re.+ (re.range "6" "8")) (re.union (re.* (str.to_re "856")) (str.to_re "11")))))
(assert (str.in_re z (re.++ (re.++ (re.+ (str.to_re "134")) (str.to_re "963")) (str.to_re "6"))))

(assert (<= (+ (* (- 7) (str.len y)) (* 7 (str.to_int x))) 53))
(assert (> (+ (* 2 (str.to_int x)) (* (- 10) (str.to_int y)) (* (- 10) (str.to_int z))) 66))

(check-sat)