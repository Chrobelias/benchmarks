(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))

(assert (str.in_re x (re.union (re.* (str.to_re "75")) (re.+ (str.to_re "344")))))
(assert (str.in_re y (re.++ (re.* (str.to_re "9")) (re.* (re.* (re.range "2" "8"))))))
(assert (str.in_re z (re.++ (str.to_re "949") (re.union (re.+ (str.to_re "377")) (re.range "6" "8")))))
(assert (str.in_re a (re.+ (re.++ (str.to_re "458") (str.to_re "8")))))

(assert (< (+ (* (- 4) (str.len x)) (* (- 2) (str.len y)) (* 2 (str.len z)) (* 4 (str.len a))) 15))
(assert (= (+ (* 4 (str.to_int x)) (* 4 (str.to_int y)) (* 7 (str.to_int z)) (str.to_int a)) 55))

(check-sat)