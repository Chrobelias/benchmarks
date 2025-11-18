(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.len x) 100))
(assert (>= (str.to_int y) 0))
(assert (>= (str.len y) 100))

(assert (str.in_re x (re.* (re.union (re.* (str.to_re "548")) (str.to_re "34")))))
(assert (str.in_re y (re.* (re.++ (str.to_re "906") (str.to_re "62")))))

(assert (> (+ (str.len x) (* (- 4) (str.to_int x)) (* (- 7) (str.to_int y))) 26))

(check-sat)