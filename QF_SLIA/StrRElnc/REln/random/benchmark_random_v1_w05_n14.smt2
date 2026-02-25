(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.++ (re.union (re.range "5" "8") (re.range "6" "9")) (re.* (str.to_re "70")))))

(assert (>= (* (- 2) (str.len x)) 76))
(assert (<= (* (- 2) (str.to_int x)) 67))
(assert (>= (* (- 4) (str.to_int x)) 40))
(assert (>= (+ (* (- 3) (str.len x)) (* (- 10) (str.to_int x))) 13))

(check-sat)