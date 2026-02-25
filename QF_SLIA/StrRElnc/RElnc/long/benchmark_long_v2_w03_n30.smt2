(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (>= (str.len x) 1000))
(assert (>= (str.len y) 1000))

(assert (= y (str.++ x "78")))

(assert (str.in_re y (re.* (re.+ (re.+ (re.* (re.range "0" "9")))))))
(assert (str.in_re x (re.+ (re.union (str.to_re "218") (re.++ (str.to_re "403") (str.to_re "185"))))))

(assert (< (+ (* (- 6) (str.len y)) (* (- 4) (str.to_int y))) 32))
(assert (<= (* (- 6) (str.to_int y)) 24))

(check-sat)