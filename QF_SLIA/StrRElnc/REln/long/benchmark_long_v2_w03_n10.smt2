(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (>= (str.len x) 1000))

(assert (str.in_re y (re.union (re.+ (re.range "5" "7")) (re.+ (re.* (str.to_re "183"))))))
(assert (str.in_re x (re.++ (re.+ (str.to_re "751")) (re.range "2" "9"))))

(assert (< (+ (* (- 10) (str.to_int x)) (* 10 (str.to_int y))) 80))
(assert (>= (+ (* 9 (str.len x)) (* (- 7) (str.len y))) 8))
(assert (= (+ (* (- 3) (str.len x)) (* 4 (str.len y))) 89))

(check-sat)