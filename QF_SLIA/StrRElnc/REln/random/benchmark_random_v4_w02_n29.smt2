(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))

(assert (str.in_re x (re.* (re.union (str.to_re "626") (str.to_re "8")))))
(assert (str.in_re a (re.+ (re.++ (str.to_re "589") (re.union (re.range "3" "6") (re.* (str.to_re "65")))))))
(assert (str.in_re z (re.* (re.union (str.to_re "715") (re.* (re.range "5" "7"))))))
(assert (str.in_re y (re.union (re.* (re.range "1" "6")) (str.to_re "59"))))

(assert (= (+ (* (- 9) (str.to_int x)) (* 5 (str.to_int y)) (str.to_int z) (* 5 (str.to_int a))) 50))
(assert (> (+ (* (- 4) (str.len x)) (* (- 8) (str.len y)) (* (- 3) (str.len z)) (* (- 2) (str.len a))) 83))

(check-sat)