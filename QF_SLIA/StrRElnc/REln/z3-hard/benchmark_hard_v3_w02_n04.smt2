(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (str.in_re x (re.union (re.* (re.* (re.range "5" "7"))) (str.to_re "95"))))
(assert (str.in_re y (re.++ (re.union (re.+ (str.to_re "94")) (str.to_re "37")) (re.* (re.range "4" "7")))))
(assert (str.in_re z (re.union (str.to_re "686") (re.* (str.to_re "74")))))

(assert (= (+ (* (- 8) (str.len y)) (* 7 (str.to_int z))) 96))

(check-sat)