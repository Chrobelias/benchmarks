(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (= x (str.++ y "53")))

(assert (str.in_re y (re.union (re.union (str.to_re "184") (re.+ (str.to_re "75"))) (str.to_re "547"))))
(assert (str.in_re x (re.* (re.union (re.union (re.range "1" "7") (str.to_re "641")) (re.range "4" "9")))))

(assert (= (+ (* 2 (str.len x)) (* (- 10) (str.to_int x))) 90))

(check-sat)