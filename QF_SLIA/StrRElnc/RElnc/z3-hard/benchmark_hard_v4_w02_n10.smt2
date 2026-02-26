(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))

(assert (= (str.++ y a) (str.++ "54" z x)))

(assert (str.in_re z (re.++ (str.to_re "79") (re.union (re.+ (str.to_re "139")) (str.to_re "208")))))
(assert (str.in_re x (re.union (re.union (re.union (str.to_re "739") (re.+ (re.range "6" "9"))) (str.to_re "350")) (re.range "7" "9"))))
(assert (str.in_re a (re.union (str.to_re "88") (re.+ (str.to_re "58")))))
(assert (str.in_re y (re.* (re.+ (re.union (re.+ (str.to_re "4")) (re.range "1" "9"))))))

(assert (> (+ (* 10 (str.len x)) (* (- 8) (str.len y)) (* (- 5) (str.to_int z))) 8))

(check-sat)