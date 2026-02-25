(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (str.in_re x (re.++ (re.* (str.to_re "808")) (re.++ (re.range "3" "5") (re.* (str.to_re "29"))))))
(assert (str.in_re y (re.* (str.to_re "13"))))

(assert (= (+ (* 6 (str.len x)) (str.len y)) 33))
(assert (< (str.to_int y) 71))

(check-sat)