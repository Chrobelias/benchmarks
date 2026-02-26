(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (= (str.++ x y) (str.++ "36" z)))

(assert (str.in_re x (re.* (re.union (re.+ (str.to_re "36")) (re.* (re.range "7" "9"))))))
(assert (str.in_re z (re.+ (re.range "6" "9"))))
(assert (str.in_re y (re.+ (re.union (re.* (str.to_re "320")) (re.range "4" "8")))))

(assert (= (+ (* 8 (str.len y)) (* (- 4) (str.to_int x)) (* (- 8) (str.to_int y)) (* (- 5) (str.to_int z))) 17))

(check-sat)