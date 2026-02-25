(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (= x (str.++ "51" y)))

(assert (str.in_re x (re.union (re.* (re.range "6" "9")) (re.* (str.to_re "515")))))
(assert (str.in_re y (re.union (re.* (re.+ (re.range "1" "8"))) (re.+ (str.to_re "660")))))

(assert (> (+ (* (- 9) (str.len x)) (* 6 (str.len y)) (* (- 8) (str.to_int x)) (* (- 5) (str.to_int y))) 56))

(check-sat)