(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (>= (str.len x) 1000))

(assert (= (str.++ x y) (str.++ "76" z)))

(assert (str.in_re y (re.+ (re.* (re.union (re.* (str.to_re "65")) (re.range "6" "8"))))))
(assert (str.in_re z (re.+ (str.to_re "7"))))
(assert (str.in_re x (re.union (re.++ (re.range "5" "7") (re.++ (re.+ (re.range "4" "8")) (re.range "5" "9"))) (str.to_re "1"))))

(assert (<= (+ (* (- 7) (str.len x)) (* (- 8) (str.len y)) (* 5 (str.to_int z))) 75))
(assert (<= (+ (* 8 (str.len x)) (* 8 (str.len y))) 100))

(check-sat)