(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (= x (str.++ "52" y)))

(assert (str.in_re y (re.++ (re.+ (re.* (str.to_re "96"))) (str.to_re "554"))))
(assert (str.in_re x (re.+ (re.+ (re.union (re.* (re.range "2" "7")) (str.to_re "61"))))))

(assert (<= (+ (* 9 (str.len x)) (* 2 (str.to_int x))) 86))
(assert (>= (+ (* 7 (str.to_int x)) (* 10 (str.to_int y))) 57))

(check-sat)