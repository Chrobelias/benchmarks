(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (str.in_re x (re.union (re.* (str.to_re "84")) (re.++ (re.+ (re.range "4" "8")) (str.to_re "89")))))
(assert (str.in_re y (re.union (str.to_re "309") (re.* (re.union (re.range "7" "9") (str.to_re "98"))))))
(assert (str.in_re z (re.++ (re.* (re.range "1" "5")) (re.+ (str.to_re "441")))))

(assert (>= (+ (* (- 5) (str.len x)) (* 8 (str.to_int x))) 15))

(check-sat)