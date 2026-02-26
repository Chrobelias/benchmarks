(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (= (str.++ "67" z x) (str.++ y "56")))

(assert (str.in_re x (re.++ (re.range "1" "5") (re.union (re.range "3" "6") (re.* (str.to_re "93"))))))
(assert (str.in_re z (re.union (re.+ (re.range "1" "7")) (re.+ (re.+ (str.to_re "699"))))))
(assert (str.in_re y (re.union (str.to_re "336") (re.+ (re.range "6" "9")))))

(assert (<= (+ (* 3 (str.len x)) (* (- 7) (str.len y)) (* (- 6) (str.to_int x))) 95))

(check-sat)