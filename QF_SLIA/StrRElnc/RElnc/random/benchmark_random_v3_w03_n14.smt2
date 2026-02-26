(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (= (str.++ "59" x) (str.++ y "23" z)))

(assert (str.in_re y (re.union (re.* (re.range "5" "9")) (re.* (str.to_re "74")))))
(assert (str.in_re z (re.union (re.union (re.+ (str.to_re "35")) (str.to_re "200")) (re.* (str.to_re "418")))))
(assert (str.in_re x (re.++ (re.* (re.+ (str.to_re "0"))) (re.+ (re.range "0" "3")))))

(assert (= (+ (* 8 (str.len x)) (* 9 (str.len y)) (* 5 (str.len z))) 71))
(assert (> (+ (* (- 3) (str.len z)) (* 4 (str.to_int x)) (* (- 6) (str.to_int z))) 26))

(check-sat)