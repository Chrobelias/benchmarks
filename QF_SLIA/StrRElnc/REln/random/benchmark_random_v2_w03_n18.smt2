(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (str.in_re x (re.+ (re.++ (str.to_re "35") (re.union (re.* (re.range "4" "9")) (re.range "1" "3"))))))
(assert (str.in_re y (re.+ (re.++ (re.* (str.to_re "86")) (str.to_re "697")))))

(assert (> (+ (* (- 8) (str.len y)) (* (- 7) (str.to_int x))) 92))
(assert (<= (+ (* 8 (str.to_int x)) (* 3 (str.to_int y))) 59))

(check-sat)