(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (= y (str.++ x "92")))

(assert (str.in_re x (re.union (re.union (str.to_re "3") (re.union (str.to_re "995") (re.* (str.to_re "89")))) (str.to_re "880"))))
(assert (str.in_re y (re.union (str.to_re "392") (re.union (str.to_re "2") (re.union (re.range "3" "8") (re.* (re.range "7" "9")))))))

(assert (= (+ (* 5 (str.to_int x)) (* (- 3) (str.to_int y))) 84))
(assert (>= (+ (* 5 (str.len x)) (* 3 (str.len y))) 54))

(check-sat)