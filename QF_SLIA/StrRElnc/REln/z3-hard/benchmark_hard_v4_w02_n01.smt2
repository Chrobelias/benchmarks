(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))

(assert (str.in_re a (re.* (str.to_re "71"))))
(assert (str.in_re x (re.++ (re.++ (re.range "7" "9") (re.* (str.to_re "59"))) (re.+ (re.range "1" "6")))))
(assert (str.in_re z (re.union (re.+ (re.union (str.to_re "54") (str.to_re "496"))) (str.to_re "29"))))
(assert (str.in_re y (re.union (re.union (str.to_re "703") (re.* (str.to_re "6"))) (re.range "6" "9"))))

(assert (= (+ (* (- 4) (str.len x)) (* 9 (str.to_int z))) 88))

(check-sat)