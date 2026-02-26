(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (= (str.++ z y) (str.++ x "28")))

(assert (str.in_re x (re.union (re.union (str.to_re "7") (re.union (re.+ (str.to_re "992")) (str.to_re "954"))) (re.range "5" "8"))))
(assert (str.in_re y (re.* (re.++ (re.range "6" "9") (re.union (re.* (str.to_re "161")) (str.to_re "843"))))))
(assert (str.in_re z (re.union (re.union (re.+ (str.to_re "72")) (str.to_re "1")) (str.to_re "280"))))

(assert (<= (+ (* 2 (str.len x)) (* 8 (str.to_int z))) 29))

(check-sat)